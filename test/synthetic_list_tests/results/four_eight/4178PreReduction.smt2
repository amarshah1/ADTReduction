
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
(assert (and (= l0 l2) (is-Cons l3) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l0) (= l0 Nil) (= l1 Nil)) )
(assert (or (= l1 l3) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l1 l0)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons l0)) )
(assert (not (is-Cons Nil)) )
(check-sat)
