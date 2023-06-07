
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
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l0 l3)) )
(assert (and (= l3 l2) (= l3 Nil) (is-Cons l1)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l1 l1)) )
(assert (and (= l2 l3) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l0 l3)) )
(assert (not (= l3 Nil)) )
(check-sat)
