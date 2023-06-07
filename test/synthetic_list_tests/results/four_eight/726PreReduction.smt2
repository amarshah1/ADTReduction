
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
(assert (and (= l0 Nil) (= l3 l2) (= l3 Nil) (is-Cons l2)) )
(assert (= l0 Nil) )
(assert (= l3 l2) )
(assert (or (= l3 l1) (= l3 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l2 l3) (is-Cons Nil) (= l0 l0) (is-Cons l0)) )
(assert (not (= l1 Nil)) )
(check-sat)
