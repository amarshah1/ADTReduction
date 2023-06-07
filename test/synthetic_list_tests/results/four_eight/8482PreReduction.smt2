
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
(assert (is-Cons l3) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l0 l3) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l1 l3) (is-Nil Nil) (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (not (is-Cons l3)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(check-sat)
