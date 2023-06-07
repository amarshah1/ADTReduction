
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
(assert (not (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons l2) (= l3 Nil)) )
(assert (and (= l3 l2) (= l1 l1)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (and (= l3 l3) (is-Cons Nil) (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
