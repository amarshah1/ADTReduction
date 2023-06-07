
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (= l1 l0) (= l3 l0)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Cons l0) (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
