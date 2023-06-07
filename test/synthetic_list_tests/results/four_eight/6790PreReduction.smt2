
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
(assert (is-Cons l1) )
(assert (and (= l2 l0) (= l0 Nil) (= l2 Nil) (= l3 l0)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l3 l2) (= l3 Nil)) )
(assert (and (is-Cons l1) (= l2 l0)) )
(assert (= l0 Nil) )
(assert (and (= l0 l1) (= l0 Nil) (= l1 l1) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
